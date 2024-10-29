class Solution {
  bool isAnagram(String s, String t) {
    bool result = true;
    
    if(s.length != t.length){
        return false;
    }
    else{
        List<String> sList = s.split('');
        List<String> tList = t.split('');
        int sCount = 0;
        int tCount = 0;
        

        for(String i in sList){
            for (int j = 0; j < sList.length; j++){
                if(i == sList[j]){
                    sCount += 1;
                }
                if(i == tList[j]){
                    tCount += 1;
                }
            }
            if(sCount != tCount){
                result = false;
                break;
            }else{
                sCount = 0;
                tCount = 0;
            }
        }

        if(result != false){
            result = true;
        }
    }
    return result;
  }
}