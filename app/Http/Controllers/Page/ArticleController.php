<?php

namespace App\Http\Controllers\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\Category;

class ArticleController extends Controller
{
    //
    public function index(Request $request)
    {
        $articles = Article::orderByDesc('id')->paginate(NUMBER_PAGINATION_PAGE);
        return view('page.articles.index', compact('articles'));
    }

    public function detail(Request $request, $id)
    {
        $article = Article::find($id);
        $categories = Category::with('news')->get();

        return view('page.articles.detail', compact('article', 'categories'));
    }
}
