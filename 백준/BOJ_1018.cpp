#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

int minToPaint(vector<string> v);

int main() {
    int n, m;
    cin >> n >> m;
    vector<string> v;
    vector<int> result;
    for (int i = 0; i < n; i++) {
        string s;
        cin >> s;
        v.push_back(s);
    }
    for (int r = 0; r <= n - 8; r++) {
        for (int c = 0; c <= m - 8; c++) {
            vector<string> newV;
            for (int i = 0; i < 8; i++) {
                newV.push_back(v[r+i].substr(c, 8));
            }
            result.push_back(minToPaint(newV));
        }
    }
    cout << *min_element(result.begin(), result.end()) << endl;
    return 0;
}

int minToPaint(vector<string> v) {
    int startWithWhite = 0;
    int startWithBlack = 0;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            if ((i + j) % 2 == 0) {
                if (v[i][j] == 'B') {
                    startWithWhite += 1;
                } else {
                    startWithBlack += 1;
                }
            } else {
                if (v[i][j] == 'W') {
                    startWithWhite += 1;
                } else {
                    startWithBlack += 1;
                }
            }
        }
    }
    return min(startWithWhite, startWithBlack);
}