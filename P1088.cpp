/*************************************************************************
	> File Name: P1088.cpp
	> Author: gpx
	> Mail: 1457495424@qq.com
	> Created Time: 2019年07月19日 星期五 20时01分35秒
 ************************************************************************/

#include <iostream>
#include <algorithm>
using namespace std;
#define MAX_N 10000

int n, m;
int arr[MAX_N + 5];

int main() {
    cin >> n >> m;
    for (int i = 0; i < n; i++) cin >> arr[i];
    while (m--) {
        next_permutation(arr, arr + n);
    }
    for (int i = 0; i < n; i++) {
        i == 0 || cout << " ";
        cout << arr[i];
    }
    cout << endl;
    return 0;
}
