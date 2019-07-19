/*************************************************************************
	> File Name: P1029.cpp
	> Author: gpx
	> Mail: 1457495424@qq.com
	> Created Time: 2019年07月19日 星期五 20时13分02秒
 ************************************************************************/

#include <iostream>
using namespace std;
#define MAX_X 100000
#define MAX_Y 1000000

int x, y, ans = 0;

int gcd(int a, int b) {
    return b ? gcd(b, a % b) : a;
}

int is_valid(int a, int b) {
    return (x == gcd(a, b)) && (y == a * b / x);
}

int main() {
    cin >> x >> y;
    if (x > y || y % x) ;
    else {
        for (int i = 1; i <= y; i++) {
            for (int j = 1; j <= y; j++) {
                if (is_valid(i, j)) ans++;
            }
        }
    }
    cout << ans << endl;
    return 0;
}
