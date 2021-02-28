#include <iostream>

using namespace std;

int comb(int n, int r);

int main() {
    int n, k;
    cin >> n >> k;
    if (k < 0 || k > n) {
        cout << 0 << endl;
    } else {
        cout << comb(n, k) << endl;
    }
}
int comb(int n, int r) {
    if (n == r || r == 0) {
        return 1;
    } else {
        return comb(n-1, r-1) + comb(n-1, r);
    }
}