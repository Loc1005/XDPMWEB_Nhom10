@extends('indexadmin')
@section('pageadmin')
<div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Chỉnh Sửa</h6>
    </div>
    <div class="card-body">
    <form action="{{route('suasp',$sanpham[0]->ma_sp)}}" method="POST">
            @csrf
            <div class="form-row">
              <div class="form-group col-md-3">
                <label for="sanpham">Tên sản phẩm</label>
                <input type="text" class="form-control" id="sanpham" name="tensanpham" value="{{$sanpham[0]->tensp}}">
              </div>
              <div class="form-group col-md-3">
                <label for="soluong">Số lượng</label>
                <input type="number" class="form-control" id="soluong" min="1" name="soluong" value="{{$sanpham[0]->soluong}}">
              </div>
              <div class="form-group col-md-3">
                <label for="giatien">Giá tiền</label>
                <input type="number" class="form-control" id="giatien" min="1" name="giatien" value="{{$sanpham[0]->dongia}}">
              </div>
              <div class="form-group col-md-3">
                <label for="khuyenmai">Giá tiền khuyến mãi</label>
                <input type="number" class="form-control" id="khuyenmai" min="1" name="giakhuyenmai" value="{{$sanpham[0]->giakhuyenmai}}">
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Update</button>
              </div>
            </div>
          </form>
    </div>
</div>

@endsection