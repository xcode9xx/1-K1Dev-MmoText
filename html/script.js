
$(document).ready(function(){
    window.addEventListener('message', function(event){
        if (event.data.action === 'annouce') {
          if (location.host === '1-k1dev-mmotext') {
            updateSubtitle(event.data.message); 
          }else {
            updateSubtitle('Do not rename resources!'); 
          }


        } 
    })
/*     updateSubtitle('กำลังโหลดข้อมูล....');  */


    function updateSubtitle(newText) {
        const subtitleElement = document.querySelector(".subtitle");
      
        // อัปเดตข้อความ
        subtitleElement.textContent = "";
      
        // แสดงทีละอักษร
        for (let i = 0; i < newText.length; i++) {
          setTimeout(() => {
            subtitleElement.classList.add("visible");
            subtitleElement.textContent += newText[i];
            
          }, i * 50); // 50 milliseconds per character
        }
      
        // รอสัก 5 วิแล้วลบ subtitle
        setTimeout(() => {
          subtitleElement.classList.remove("visible");
        }, (newText.length * 50) + 8000); // 50 milliseconds per character + 5 seconds
    }
})








  