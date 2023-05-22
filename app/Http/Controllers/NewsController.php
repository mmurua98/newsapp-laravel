<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Carbon\Carbon;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $apiKey = env('NEWS_API_KEY');
        $url = 'https://newsapi.org/v2/top-headlines?country=us';

        $client = new Client();

        try {
            $response = $client->request('GET', $url, [
                'headers' => [
                    'Authorization' => 'Bearer ' . $apiKey,
                    'Accept' => 'application/json',
                ],
            ]);

            $data = json_decode($response->getBody(), true);
            $articles = $data['articles'];
            //dd($articles);
            

            // Guardar las noticias más visitadas en la base de datos
            foreach ($articles as $article) {
                try{
                    $formattedDate = Carbon::parse($article['publishedAt'])->format('Y-m-d H:i:s');
                    $author = isset($article['author']) ? $article['author'] : '';

                    News::create([
                        'title' => $article['title'],
                        'author' => $author,
                        'date' => $formattedDate,
                        'url' => $article['url'],
                        'thumbnail' => $article['urlToImage'],
                    ]);
                } catch (Exception $e) {
                    // Manejar errores de inserción en la base de datos
                    dd($e);
                }
            }


            // Pasar los datos a la vista
            return view('index', compact('articles'));
        

        } catch (Exception $e) {
            // Manejar errores de solicitud
        }
    }

    public function search(Request $request)
    {
        $keyword = $request->input('keyword'); // Obtén el valor de la palabra clave ingresada

        $news = News::where('title', 'LIKE', "%$keyword%")->get();

        return view('partials.news', compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(News $news)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(News $news)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, News $news)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(News $news)
    {
        //
    }
}
