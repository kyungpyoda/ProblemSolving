#include <iostream>
#include <unordered_set>

using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int n, m;
    unordered_set<int> s;
    cin >> n;
    while (n-- > 0) {
        int num;
        cin >> num;
        s.insert(num);
    }
    cin >> m;
    while (m-- > 0) {
        int num;
        cin >> num;
        if (s.find(num) == s.end()) {
            printf("0\n");
        } else {
            printf("1\n");
        }
    }
    return 0;
}