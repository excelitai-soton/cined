class Item {
  var user, time, rating, reviews, pro_name, price, quantity, pro_image, sale, pId, oStatus,payStatus, oDate;
  Item(
      {this.user,
      this.rating,
      this.reviews,
      this.time,
      this.price,
      this.pro_name,
      this.quantity,
      this.pro_image,
      this.sale,
      this.oDate,
        this.oStatus,
        this.payStatus,
        this.pId
      });
}

class OrderHistory{
  var all = [
    Item(
      pId: 'EW256987',
      price: '\$60',
      oStatus: 'Pending',
      payStatus: true,
      oDate: '19Oct, 10:00am'
    ),
    Item(
        pId: 'EW256936',
        price: '\$45',
        oStatus: 'Processing',
        payStatus: true,
        oDate: '14Oct, 12:00pm'
    ),
    Item(
        pId: 'EW256947',
        price: '\$35',
        oStatus: 'Canceled',
        payStatus: false,
        oDate: '15Oct, 11:40am'
    ),
    Item(
        pId: 'EW256924',
        price: '\$23',
        oStatus: 'Picked',
        payStatus: true,
        oDate: '16Oct, 03:00pm'
    ),
    Item(
        pId: 'EW256955',
        price: '\$70',
        oStatus: 'Canceled',
        payStatus: false,
        oDate: '17Oct, 07:10pm'
    ),
    Item(
        pId: 'EW256945',
        price: '\$80',
        oStatus: 'Stopped',
        payStatus: false,
        oDate: '18Oct, 10:00pm'
    ),
    Item(
        pId: 'EW256974',
        price: '\$80',
        oStatus: 'Confirmed',
        payStatus: true,
        oDate: '18Oct, 10:00pm'
    ),
  ];
  var pending = [
    Item(
        pId: 'EW256987',
        price: '\$60',
        oStatus: 'Pending',
        payStatus: true,
        oDate: '19Oct, 10:00am'
    ),
  ];
  var processing = [
    Item(
        pId: 'EW256936',
        price: '\$45',
        oStatus: 'Processing',
        payStatus: true,
        oDate: '14Oct, 12:00pm'
    ),
  ];
  var canceled = [
    Item(
        pId: 'EW256947',
        price: '\$35',
        oStatus: 'Canceled',
        payStatus: false,
        oDate: '15Oct, 11:40am'
    ),
    Item(
        pId: 'EW256955',
        price: '\$70',
        oStatus: 'Canceled',
        payStatus: false,
        oDate: '17Oct, 07:10pm'
    ),
  ];
  var picked = [
    Item(
        pId: 'EW256924',
        price: '\$23',
        oStatus: 'Picked',
        payStatus: true,
        oDate: '16Oct, 03:00pm'
    ),
  ];
  var stopped = [
    Item(
        pId: 'EW256945',
        price: '\$80',
        oStatus: 'Stopped',
        payStatus: false,
        oDate: '18Oct, 10:00pm'
    ),
  ];
  var confirmed = [
    Item(
        pId: 'EW256974',
        price: '\$80',
        oStatus: 'Confirmed',
        payStatus: true,
        oDate: '18Oct, 10:00pm'
    ),
  ];
}

class RatingReviews {
  var list = [
    Item(
        user: 'Jonathond H.',
        time: ' 3 weeks ago',
        rating: '3',
        reviews:
            '100% Authentic Product. Recommend highly the Econix Store. Great Product!'),
    Item(
        user: 'Anderson Coo.',
        time: ' 5 weeks ago',
        rating: '4',
        reviews:
            '100% Authentic Product. Recommend highly the Econix Store. Great Product!'),
  ];
}

class MyCartClass {
  var list = [
    Item(
        pro_image: 'images/main-4-624x416-removebg-preview.png',
        pro_name: 'Airpod',
        price: '\$23',
        quantity: '1',
        rating: '4.8(255 Review)'),
    Item(
        pro_image: 'images/main-4-624x416-removebg-preview.png',
        pro_name: 'Camera',
        price: '\$23',
        quantity: '1',
        sale: true,
        rating: '4.8(255 Review)'),
    Item(
        pro_image: 'images/main-4-624x416-removebg-preview.png',
        pro_name: 'Game Pad',
        price: '\$23',
        quantity: '1',
        rating: '4.8(255 Review)'),
    Item(
        pro_image: 'images/main-4-624x416-removebg-preview.png',
        pro_name: 'CCTV',
        price: '\$23',
        quantity: '1',
        rating: '4.8(255 Review)'),
    Item(
        pro_image: 'images/main-4-624x416-removebg-preview.png',
        pro_name: 'Speaker',
        price: '\$23',
        quantity: '1',
        rating: '4.8(255 Review)'),
    Item(
        pro_image: 'images/main-4-624x416-removebg-preview.png',
        pro_name: 'Lens',
        price: '\$23',
        quantity: '1',
        rating: '4.8(255 Review)'),
    Item(
        pro_image: 'images/main-4-624x416-removebg-preview.png',
        pro_name: 'Laptop',
        price: '\$23',
        quantity: '1',
        rating: '4.8(255 Review)'),
    Item(
        pro_image: 'images/main-4-624x416-removebg-preview.png',
        pro_name: 'MacBook',
        price: '\$23',
        quantity: '1',
        rating: '4.8(255 Review)'),
  ];
}
