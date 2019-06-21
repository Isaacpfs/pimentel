<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Produto;

class ProdutoController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $request->user()->authorizeRoles(['admin', 'funcionario']);
        $produtos = Produto::all();
        $total = Produto::all()->count();
        return view('list-produtos', compact('produtos', 'total'));
    }

    public function create()
    {

        return view('include-produto');
    }

    public function store(Request $request)
    {
        $product = new Produto;
        $product->name = $request->name;
        $product->description = $request->description;
        $product->quantity = $request->quantity;
        $product->price = $request->price;
        $product->imagem = $request->imagem;
        $product->save();
        return redirect()->route('product.index')->with('message', 'Produto criado com sucesso!');
    }

    public function show($id)
    { }

    public function edit($id)
    {
        $product = Produto::findOrFail($id);
        return view('alter-produto', compact('product'));
    }

    public function update(Request $request, $id)
    {
        $product = Produto::findOrFail($id);
        $product->name = $request->name;
        $product->description = $request->description;
        $product->quantity = $request->quantity;
        $product->price = $request->price;
        $product->save();
        return redirect()->route('product.index')->with('message', 'Produto alterado com sucesso!');
    }

    public function destroy(Request $request, $id)
    {
        $request->user()->authorizeRoles('admin');
        $product = Produto::findOrFail($id);
        $product->delete();
        return redirect()->route('product.index')->with('message', 'Produto excluído com sucesso!');
    }
}
