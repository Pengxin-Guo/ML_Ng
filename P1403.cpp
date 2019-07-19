/*************************************************************************
	> File Name: P1403.cpp
	> Author: gpx
	> Mail: 1457495424@qq.com
	> Created Time: 2019年07月19日 星期五 20时07分28秒
 ************************************************************************/

#include <iostream>
using namespace std;
#define MAX_N 1000000

int main() {
    int n, ans;
    cin >> n;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n && i * j <= n; j++) {
            ans += (i * j <= n);
        }
    }
    cout << ans << endl;
    return 0;
}
