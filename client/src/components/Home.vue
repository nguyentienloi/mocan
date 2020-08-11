<template>
<div>
    <div class="modal" id="myModal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body">
            <p class="text-center">Bạn có muốn bình luận bài viết này!</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-success" style="margin: 0px auto;" data-dismiss="modal" v-on:click="postcomment()">Bình luận</button>
          </div>
        </div>
      </div>
    </div>
    <div class="modal" id="myModalTV">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body">
            <form v-on:submit.prevent="postCustomer">
              <h1 class="h3 mb-3 font-weight-normal text-center">Tư vấn nhanh</h1>
              <p class="text-center">Để lại thông tin để được nhân viên tư vấn nhanh nhất</p>
              <div class="form-group">
                <label for="name">Tên của bạn</label>
                <input type="text" id="name" v-model="name" name="name" placeholder="Enter name" class="form-control">
              </div>
              <div class="form-group">
                <label for="phone">Số điện thoại liên lac</label>
                <input type="number" id="phone" v-model="phone" name="phone" placeholder="Enter phone" class="form-control">
                <label v-if="err.length > 0" for="" class="alert alert-danger alert-block">{{ err }}</label>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-success" style="margin: 0px auto;" data-dismiss="modal" v-on:click="postCustomer()">Tư vấn nhanh</button>
          </div>

        </div>
      </div>
    </div>
    <div class="bgimg-1">
        <div class="caption">
          <div class="container" style="margin-top: 70px;">
            <div class="carousel slide" id="main-carousel" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#main-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#main-carousel" data-slide-to="1"></li>
              </ol>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block img-fluid" src="../assets/image/banner1.jpg" style="width:100%" alt="">
                </div>
                <div class="carousel-item">
                  <img class="d-block img-fluid" src="../assets/image/banner2.jpg" style="width:100%" alt="">
                </div>
              </div>
              <a href="#main-carousel" class="carousel-control-prev" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                <span class="sr-only" aria-hidden="true">Prev</span>
              </a>
              <a href="#main-carousel" class="carousel-control-next" data-slide="next">
                <span class="carousel-control-next-icon"></span>
                <span class="sr-only" aria-hidden="true">Next</span>
              </a>
            </div>
          </div>
        </div>
    </div>

    <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify;">
        <h2 style="text-align:center;">XƯƠNG KHỚP MỘC THANH - ĐÁNH BAY CƠN ĐAU NHỨC XƯƠNG KHỚP NHANH CHÓNG, AN TOÀN</h2>
        <p class="text-center">Xương khớp Mộc Thanh là sản phẩm hỗ trợ điều trị các bệnh về xương khớp đang được chú ý nhiều hiện nay. Đau nhức, viêm xương khớp, thoái hóa xương khớp là những vấn đề gây nên nỗi ám ảnh lớn với người bệnh. Hãy cùng tìm hiểu ngay sản phẩm để biết nó có những điều đặc biệt gì nhé!</p>
    </div>

    <div class="bgimg-2">
        <div class="caption">
            <img style="margin: 0px auto; opacity: 1;" src="../assets/image/img1.jpg" alt="" class="d-block img-fluid">
        </div>
    </div>

    <!-- <div style="position:relative;">
        <div style="color:#ddd;background-color:#282E34;text-align:center;padding:50px 80px;text-align: justify;">
            <p>Scroll up and down to really get the feeling of how Parallax Scrolling works.</p>
        </div>
    </div> -->
    <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify;">
        <h2 style="text-align:center;">GIỚI THIỆU</h2>
        <p class="text-center">Viên xương khớp này do Lương Y Lê Thị Miểu nghiên cứu và bào chế. Với tư chất thông minh và ham học hỏi cùng với những bài thuốc từ đời cha ông để lại, Lương Y Miểu nắm nhiều bài thuốc bí truyền của người Mường. Trong đó không thể không nói tới bài thảo dược Bình Cân Cốt Mộc An chuyên hỗ trợ điều trị các bệnh về xương khớp.</p>
        <p class="text-center">Bình Cân Cốt Mộc An được bào chế từ các thảo dược thiên nhiên, an toàn, lành tính và không có tác dụng phụ. Quy trình trồng, thu hái và bào chế 100% thủ công, quy trình đóng gói sử dụng dây truyền hiện đại, khép kín và đồng bộ. Đây chính là yếu tố khiến sản phẩm được tin chọn nhiều.</p>
        <p class="text-center">Xương khớp Mộc Thanh là sản phẩm hỗ trợ điều trị các bệnh về xương khớp đang được chú ý nhiều hiện nay. Đau nhức, viêm xương khớp, thoái hóa xương khớp là những vấn đề gây nên nỗi ám ảnh lớn với người bệnh. Hãy cùng tìm hiểu ngay sản phẩm để biết nó có những điều đặc biệt gì nhé!</p>
    </div>

    <div class="bgimg-3">
        <div class="caption">
            <img style="margin: 0px auto; opacity: 1; width:32%" src="../assets/image/mg2.jpg" alt="" class="d-block img-fluid">
        </div>
    </div>

     <div class="ef_congdung" style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify;">
        <h2 style="text-align:center;">CÔNG DỤNG</h2>
        <h4 style="text-align:center;">Sản phẩm mang lại nhiều tác dụng tuyệt vời cho sức khỏe xương khớp. Cụ thể:</h4>
        <p style="text-align: center; background: aliceblue; border-radius: 10px; padding: 12px;">Hỗ trợ bổ sung những dưỡng chất cần thiết cho sụn khớp. Nhờ vậy, sụn khớp phát triển, tiết nhiều dịch khớp và tái tạo nhanh hơn.</p>
        <p style="text-align: center; background: aliceblue; border-radius: 10px; padding: 12px;">Hỗ trợ tăng sức mạnh cho gân xương. Đồng thời, giúp khí huyết lưu thông tốt hơn, từ đó, xương khớp nhận đầy đủ dinh dưỡng nên chắc khỏe hơn.</p>
        <p style="text-align: center; background: aliceblue; border-radius: 10px; padding: 12px;">Hỗ trợ giảm đau dây thần kinh tọa, nhức mỏi chân tay, thoái hóa đốt sống, thoát vị đĩa đệm, đau mỏi vai gáy.</p>
        <p style="text-align: center; background: aliceblue; border-radius: 10px; padding: 12px;">Hỗ trợ đẩy lùi các biến chứng xảy ra trên xương khớp như: ung thư xương, khớp biến dạng, tứ chi teo, tàn phế, bại liệt.</p>
        <p style="text-align: center; background: aliceblue; border-radius: 10px; padding: 12px;">Hỗ trợ điều trị thoái hoá các khớp gối, khớp háng, cột sống, khớp bả vai, quanh khớp bị viêm, loãng xương.</p>
        <p style="text-align: center; background: aliceblue; border-radius: 10px; padding: 12px;">Hỗ trợ chữa trị cho những người bị gãy xương, viêm khớp cấp tính và mãn tính, trật khớp.</p>
        <p style="text-align: center; background: aliceblue; border-radius: 10px; padding: 12px;">Hỗ trợ bôi trơn các khớp, giảm tiếng kêu lạo xạo khi bất ngờ đứng lên ngồi xuống.</p>
    </div>
    <div class="bgimg-2">
        <div class="caption">
            <img style="margin: 0px auto; opacity: 0.7;" src="https://s19.postimg.cc/nenabzsnn/slide4.jpg" alt="" class="d-block img-fluid">
        </div>
    </div>

    <!-- <div style="position:relative;">
        <div style="color:#ddd;background-color:#282E34;text-align:center;padding:50px 80px;text-align: justify;">
            <p>Scroll up and down to really get the feeling of how Parallax Scrolling works.</p>
        </div>
    </div> -->
    <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify;">
        <h2 style="text-align:center;">MỘC AN HÓA GIẢI CHỨNG ĐAU XƯƠNG KHỚP NHƯ THẾ NÀO?</h2>
        <p class="text-center">Bình Cân Cốt Mộc An là những sản phẩm được bào chế từ 100% thảo dược trong tự nhiên theo kinh nghiệm cổ truyền. Sản phẩm đã được nghiên cứu kỹ lưỡng về thành phần, cấu tạo, khả năng liên kết và tác dụng của các nguyên liệu, nhằm tạo ra Thảo dược Bình Cân Cốt Mộc An chất lượng. <b>Bình Cân Cốt Mộc An có công dụng Hỗ trợ bôi trơn khớp, giúp khớp vận động linh hoạt. Hỗ trợ giảm đau, mỏi khớp do thoái hóa khớp, khô cứng khớp, viêm khớp</b>.</p>
    </div>

    <div class="bgimg-5">
      <div class="caption row">
        <div class="col-md-4">
          <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg3.jpg" alt="" class="d-block img-fluid">
        </div>
        <div class="col-md-4">
          <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg4.jpg" alt="" class="d-block img-fluid">
        </div>
        <div class="col-md-4">
          <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg5.jpg" alt="" class="d-block img-fluid">
        </div>
        <div class="col-md-4">
          <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg6.jpg" alt="" class="d-block img-fluid">
        </div>
        <div class="col-md-4">
          <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg7.jpg" alt="" class="d-block img-fluid">
        </div>
        <div class="col-md-4">
          <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg8.jpg" alt="" class="d-block img-fluid">
        </div>
      </div>
    </div>

     <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify;">
        <h2 style="text-align:center;">NHỮNG ĐỐI TƯỢNG CẦN DÙNG ĐẾN BÌNH CÂN CỐT MỘC AN</h2>
        <p style="text-align:center;">Bình Cân Cốt Mộc An là những sản phẩm được bào chế từ 100% thảo dược trong tự nhiên theo kinh nghiệm cổ truyền. Sản phẩm đã được nghiên cứu kỹ lưỡng về thành phần, cấu tạo, khả năng liên kết và tác dụng của các nguyên liệu, nhằm tạo ra Thảo dược Bình Cân Cốt Mộc An chất lượng. Bình Cân Cốt Mộc An có công dụng Hỗ trợ bôi trơn khớp, giúp khớp vận động linh hoạt. Hỗ trợ giảm đau, mỏi khớp do thoái hóa khớp, khô cứng khớp, viêm khớp.</p>
    </div>
    <div class="bgimg-4">
      <div class="caption row">
        <div class="col-md-6">
          <img style="margin: 0px auto; opacity: 1; width: 65%; margin-bottom: 20px;" src="../assets/image/mg12.jpg" alt="" class="d-block img-fluid">
        </div>
        <div class="col-md-4" style="background-color: white; opacity: 0.8; padding:12px; border-radius:12px; height:265px;">
          <p>Đau nhức các khớp xương, đau vai gáy, vùng thắt lưng</p>
          <p>Đau mỏi toàn thân, đau tăng lên khi vận động nhiều hay mang vác nặng hoặc tê mỏi</p>
          <p>Đau và xưng tấy các khớp gối, cổ tay, cổ chân, ngón tay, ngón chân</p>
          <p>Vận động các khớp phát ra tiếng lạo xạo</p>
          <p>Không thể ngồi khi thoát vị đĩa đệm...</p>
        </div>
        <div class="col-md-11" style="background-color: white; opacity: 0.8; padding:12px; border-radius:12px; margin: 0px auto;">
          <p>Nếu phát hiện sớm thì chỉ mất gần 1 tháng là tình trạng bệnh tình được cải thiện và trở lại bình thường. Còn nếu nặng phải mất thời gian lâu hơn và thùy thuộc và cơ địa của mỗi người. Để tránh biến chứng nguy hiểm khó lường, tổn hại kinh tế và tốn nhiều thời gian hãy bắt ngay từ hôm nay.</p>
        </div>
        <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify; margin: 20px -15px;">
          <h2 style="text-align:center;">CƠ XƯƠNG KHỚP KHÔNG XỬ LÝ NGAY BỆNH LÂU BIẾN CHỨNG KHÓ LƯỜNG</h2>
          <p style="text-align:center;">Hiện nay, các dạng bệnh lý về Xương khớp đang là nguy cơ hàng đầu dẫn đến tàn phế. Nếu có triệu chứng không xử lý sớm, bệnh ủ lâu chuyển biến phức tạp, ác tính rất nguy hiểm sau này.</p>
        </div>
          <div class="row">
            <div class="col-md-6">
              <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg9.jpg" alt="" class="d-block img-fluid">
            </div>
            <div class="col-md-6">
              <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg10.jpg" alt="" class="d-block img-fluid">
            </div>
            <div class="col-md-6">
              <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg11.jpg" alt="" class="d-block img-fluid">
            </div>
            <div class="col-md-6">
              <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg14.jpg" alt="" class="d-block img-fluid">
            </div>
          </div>
          <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify; margin: 20px -15px;">
            <h2 style="text-align:center;">VÌ SAO NÊN CHỌN BÌNH CÂN CỐT MỘC AN ?</h2>
            <p style="text-align:center;">Hiện nay, các dạng bệnh lý về Xương khớp đang là nguy cơ hàng đầu dẫn đến tàn phế. Nếu có triệu chứng không xử lý sớm, bệnh ủ lâu chuyển biến phức tạp, ác tính rất nguy hiểm sau này.</p>
            <p style="text-align:center;">Các chuyên gia đầu ngành có đánh giá cao về hiệu quả của việc sử dụng Bình Cân Cốt Mộc An. Trong chương trình Vì Sức Khỏe Người Việt, Tiến Sĩ - Bác Sĩ Mai Thị Minh Tâm (phó khoa cơ xương Khớp, bệnh viện E trung ương / Giảng viên – phó chủ nhiệm Khoa Bộ môn nội, Khoa Y Dược Đại học Quốc gia Hà Nội) nhận định : “Khi chúng ta sắc thuốc nó là cả bát thuốc nhưng khi chúng ta cô lại, nó chỉ còn lại một lượng rất nhỏ được đưa vào viên nang ví dụ viên Xương Khớp Mộc Thanh. Hiệu quả của sản phẩm không mất đi mà vẫn được giữ nguyên, lại tiện lợi khi chúng ta sử dụng, mang đi mang lại dễ dàng và bảo quản được rất lâu”</p>
          </div>
          <div class="container">
            <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg16.jpg" alt="" class="d-block img-fluid">
          </div>
          <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify; margin: 20px -15px;">
            <p style="text-align:center;">"Mộc An là sự phối hợp của thuốc cổ phương như Độc hoạt tan khí sinh và bài Mộc qua bạch hổ thang là các bài thuốc cổ xưa rất có tác dụng với xương khớp. Người ta đã nghiên cứu và phối hợp giữa 2 công thức với nhau sẽ giúp cho các bệnh xương khớp rất tốt. Giúp bôi trơn các khớp xương, tăng cường các hoạt dịch của khớp xương làm cho các khớp linh hoạt và cơ động hơn. Đồng thời trong đó nó có tác dụng giảm đau chống sưng tấy, đặc biệt là sản phẩm này hoàn toàn từ dược liệu thiên nhiên nên không độc hại và rất ít phản ứng phụ."</p>
          </div>
          <div class="container">
            <img style="margin: 0px auto; opacity: 1; width: 60%; margin-bottom: 20px;" src="../assets/image/mg17.jpg" alt="" class="d-block img-fluid">
          </div>
          <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify; margin: 20px -15px;">
            <h2 style="text-align:center;">CƠ CHẾ TÁC ĐỘNG CỦA BÌNH CÂN CỐT MỘC AN ?</h2>
            <h4>GIAI ĐOẠN 1 : Kháng viêm, tiêu độc</h4>
            <p>Trong giai đoạn này, Mộc Thanh chú trọng khoanh vùng, tập trung đến thẳng các ổ viêm, Làm sạch ổ viêm đồng thời đẩy độc tố ra ngoài cơ thể. Người bệnh sẽ cảm thấy đau tăng lên đôi chút, sau đó sẽ dịu dần và thoải</p>
            <h4>GIAI ĐOẠN 2 : Làm lành</h4>
            <p>Sau giai đoạn tiêu viêm, tán độc, các dưỡng chất từ Mộc Thanh được hấp thụ giúp nâng cao sức đề kháng, khai thông khí huyết, kích hoạt cơ chế tự lành của cơ thể. Người bệnh sẽ cảm thấy ăn ngon dễ ngủ, vận động linh hoạt hơn.</p>
            <h4>GIAI ĐOẠN 3 : Tái tạo</h4>
            <p>Cơ chế tự lành được kích hoạt mạnh, khí huyết lưu thông,cơ thể được bồi bổ nên các chức năng cải thiện, tăng tiết dịch khớp, mô sụn dần tạo mới thay thế phần bị hỏng, tăng sản tế bào xương, cơ gân đàn hồi dẻo dai. Người bệnh vận động linh hoạt gần như tuyệt đối.</p>
          </div>
          <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify; margin: 20px -15px;">
            <h2 style="text-align:center;">KẾT QUẢ NHẬN ĐƯỢC SAU KHI SỬ DỤNG BÌNH CÂN CỐT MỘC AN</h2>
          </div>
          <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify; margin: 20px -15px;">
            <h2 style="text-align:center;">BÌNH CÂN CỐT MỘC AN TỰ TIN ĐẢM BẢO CHẤT LƯỢNG</h2>
            <div class="row">
              <div class="col-md-6">
                <img style="margin: 0px auto; opacity: 1; width: 65%; margin-bottom: 20px;" src="../assets/image/mg12.jpg" alt="" class="d-block img-fluid">
              </div>
              <div class="col-md-6">
                <img style="margin: 0px auto; opacity: 1; width: 65%; margin-bottom: 20px;" src="../assets/image/mg12.jpg" alt="" class="d-block img-fluid">
              </div>
            </div>
          </div>
        <div class="container" style="background-color: white; margin-top: 3000px; border-radius: 20px;">
          <h1 class="h3 mb-3 font-weight-normal" style="padding-top: 15px;">Form bình luận</h1>
          <div class="list_comment" :v-if="listComment.length">
            <div class="card">
              <div class="card-body">
                <div class="card card-inner" :key="index" v-for="(data, index) in listComment" style="margin-bottom: 10px;">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-2">
                        <img id="img_logo" src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid"/>
                        <p class="text-secondary text-center">{{ data.created }}</p>
                      </div>
                      <div class="col-md-10">
                        <ul>
                          <li><p style="margin-left:-800px;"><strong>{{ data.userName }}</strong></p></li>
                          <li><p style="margin-left:-800px;">{{ data.comment }}</p></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card" style="margin-top: 30px;">
            <h2 style="padding:20px">Góp ý về sản phẩm</h2>
            <div class="card-body">
              <form>
                <div class="form-group">
                  <textarea id="message" placeholder=" Bình luận..." rows="6" cols="150"></textarea>
                </div>
                <button class="btn btn-info btn-lg float-right" type="submit" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-send"></span>Send</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  <div style="color: #777;background-color:white;text-align:center;padding:35px 150px;text-align: justify;">
  </div>
<button style="position: fixed; z-index: 1000; bottom: 10px; right:0px;" class="btn btn-info btn-lg float-right" type="submit" data-toggle="modal" data-target="#myModalTV"><span class="glyphicon glyphicon-send"></span>Tư vấn nhanh</button>
</div>
</template>

<script>
import EventBus from './EventBus'
// import router from '../router'
import axios from 'axios'
export default {
  data () {
    return {
      img_banner: require('../assets/image/banner1.jpg'),
      auth: '',
      message: '',
      err: false,
      name: '',
      phone: '',
      listComment: []
    }
  },
  methods: {
    postcomment () {
      const mess = document.getElementById('message').value
      if (mess.length <= 0) {
        this.err = true
      } else {
        axios.post('/comments/postcomment', {
          customerId: 4,
          comment: mess
        }).then(res => {
          alert('Bình luận thành công')
          this.getListCmt()
        }).catch(err => {
          console.log(err)
        })
      }
    },
    postCustomer () {
      if (this.name && this.phone && this.phone.length === 10) {
        axios.post('/customers/postcustomer', {
          name: this.name,
          mobile: this.phone
        }).then(res => {
          alert('Chúng tôi sẽ liên hệ tới bạn sớm nhất')
          // router.push({name: 'Home'})
        }).catch(err => {
          console.log(err)
        })
      } else {
        this.err = 'so dien thoai bi sai'
      }
    }
  },
  computed: {
    getListCmt () {
      axios.get('/comments/getlist').then(res => {
        this.listComment = res.data
      }).catch(err => {
        console.log(err)
      })
    }
  },
  mounted () {
    EventBus.$on('logged-in', status => {
      this.auth = status
    }),
    this.getListCmt ()
  }
}
</script>
