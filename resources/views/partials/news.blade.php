<div class="row">
    @foreach ($news as $new)
        <div class="col-md-3">
            <div class="card" style="width:100%">
                <img class="card-img-top" src="{{$new['thumbnail']}}" height="200px" alt="Card image">
                <div class="card-body">
                    <h4 class="card-title">{{$new['title']}}</h4>
                    <p class="card-text">{{$new['author']}}</p>
                    <p class="card-text">{{ date('d-M-y', strtotime($new['date']) ) }}</p>
                    <a href="{{$new['url']}}" target="_blank" class="stretched-link">Read more</a>
                </div>
            </div>
        </div>
    @endforeach
</div>