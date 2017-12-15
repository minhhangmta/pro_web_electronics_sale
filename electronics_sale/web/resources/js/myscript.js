function clickDanhMucCha(id, oldId) {
    alert(oldId);
    if (oldId == 0) {
        alert("oldId!=0");
//        document.getElementById("li-dm-" + oldId).className = "";
    }
//    document.getElementById("li-dm-" + id).className = "active";
//    document.getElementById("oldId").value = id;
//    alert(document.getElementById("oldId").value );
}

function clickDanhMuc(id) {
    document.getElementById("idDM").value = id;
    alert(document.getElementById("idDM").value);
}

function clickHere() {
    alert("ok");
//    document.getElementByClassName("abc").innerHTML = "li-dm-";
}