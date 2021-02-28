#include <iostream>

using namespace std;

int main() {
    int n;
    cin >> n;
    bool prime[1001];
    fill_n(prime, 1001, true);
    prime[1] = false;
    for (int i = 2; i <= 1000; i++) {
        if (!prime[i]) { continue; }
        for (int j = 2; i * j <= 1000; j++) {
            prime[i*j] = false;
        }
    }
    int count = 0;
    while (n-- > 0) {
        int num;
        cin >> num;
        count += (prime[num] ? 1 : 0);
    }
    cout << count << endl;
    return 0;
}