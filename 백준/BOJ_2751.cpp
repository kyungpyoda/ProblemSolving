#include <iostream>
#include <vector>

using namespace std;

int main() {
    cin.tie(NULL);
    ios::sync_with_stdio(false);
    int n;
    cin >> n;
    vector<bool> v(2000001, false);
    while (n-- > 0) {
        int num;
        cin >> num;
        v[num+1000000] = true;
    }
    for (int i = 0; i < 2000001; i++) {
        if (v[i]) {
            cout << i-1000000 << '\n';
        }
    }
    return 0;
}