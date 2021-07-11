<?php

namespace App\Http\Controllers\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Tour;

class TourController extends Controller
{
    //
    public function index(Request $request)
    {
        $tours = Tour::orderBy('id')->paginate(NUMBER_PAGINATION_PAGE);
        $viewData = [
            'tours' => $tours
        ];
        return view('page.tour.index', $viewData);
    }
}
