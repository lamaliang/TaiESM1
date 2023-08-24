# TaiESM1 Quick Start

### 在/work底下創建資料夾
1. cd /work/你的帳號
2. mkdir taiesm_work

### 複製創建case的shell script至taiesm_work資料夾  
 3. cd taiesm_work  
 4. cp /work/j07hsu00/taiesm_class/setup.case.csh .   

### 建立模擬case，並且檢查是否有問題  
5. cat setup.case.csh  
6. ./setup.case.csh  

### 環境配置檢查  
7. cd f09.B2000.taiesm1-test1  
8. ./cesm_setup  

### 修改模擬時間，從模擬五天改為一個月(擇一)：使用xmlchange   
9. ./xmlchange STOP_OPTION=nmonths  
10. ./xmlchange STOP_N=1  

### 修改模擬時間，從模擬五天改為一個月(擇一)：使用vi  
9. vi env_run.xml  
10. STOP_OPTION 從ndays改為'__nmonths__' ; STOP_N 從5改為'__1'__  

### compiler TaiESM1  
11. ./f09.B2000.taiesm1-test1.build

### 使用排成軟體將模擬城市送出去  
12. vi f09.B2000.taiesm1-test1.run

### 本次Tutorial 有申請專屬節點，可以直接使用
13. 修改第六行 #SBATCH -p '__ct2k__' 為 #SBATCH -p '__dc-MST108251-03__'

### 將job丟置排程系統上
14. ./f09.B2000.taiesm1-test1.submit

### 檢查模擬情況 
15. cat or tail -f run/cesm.log.xxxxxx-xxxxxx
16. cat or tail -f run/atm.log.xxxxxx-xxxxxx

# TaiESM1 其他資訊
### 變數參考 https://www2.cesm.ucar.edu/models/cesm2/atmosphere/docs/ug6/hist_flds_f2000.html

#### compset list ###
Standard supported compsets:
Coupled (f09_g16 only)
   B_2000
   B_1850
   B_1850-2000
   B_SSP126, B_SSP245, B_SSP370, B_SSP585

Prescribed-SST (f09_f09 only)
   F_1850
   F_2000
   F_1850-2000
