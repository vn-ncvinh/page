const libimg = ["img/ca.jpg", "img/tom.jpg", "img/cua.jpg", "img/ga.jpg", "img/huou.jpg", "img/ruou.jpg",]
function random(i) {
    setTimeout(function () {
        document.getElementById("img1").src = libimg[Math.floor(Math.random() * libimg.length)];
        document.getElementById("img2").src = libimg[Math.floor(Math.random() * libimg.length)];
        document.getElementById("img3").src = libimg[Math.floor(Math.random() * libimg.length)];
    }, i * 10);
}

function run() {
    for (let i = 1; i <= 20; i++) {
        random(i);
    }
}

random(0);