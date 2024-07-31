.class public Lcom/google/android/gms/auth/api/signin/internal/Storage;
.super Ljava/lang/Object;


# static fields
.field private static final zaaj:Ljava/util/concurrent/locks/Lock;

.field private static zaak:Lcom/google/android/gms/auth/api/signin/internal/Storage;


# instance fields
.field private final zaal:Ljava/util/concurrent/locks/Lock;

.field private final zaam:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaaj:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    .line 11
    const-string v0, "com.google.android.gms.signin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaam:Landroid/content/SharedPreferences;

    .line 12
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaak:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaak:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaak:Lcom/google/android/gms/auth/api/signin/internal/Storage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private final zaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaam:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private static zab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 71
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zad(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    return-object v1

    .line 36
    :cond_0
    const-string v0, "googleSignInAccount"

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaa(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 38
    :catch_0
    move-exception p1

    .line 39
    return-object v1

    .line 37
    :cond_1
    return-object v1
.end method

.method private final zae(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    return-object v1

    .line 44
    :cond_0
    const-string v0, "googleSignInOptions"

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zab(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    return-object v1

    .line 45
    :cond_1
    return-object v1
.end method

.method private final zaf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaam:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    return-object p1

    .line 53
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private final zag(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaam:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaam:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaal:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 32
    const-string v0, "defaultGoogleSignInAccount"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zad(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0
.end method

.method public getSavedDefaultGoogleSignInOptions()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 40
    const-string v0, "defaultGoogleSignInAccount"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zae(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSavedRefreshToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 48
    const-string v0, "refreshToken"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveDefaultGoogleSignInAccount(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    nop

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zab()Ljava/lang/String;

    move-result-object v0

    .line 17
    const-string v1, "defaultGoogleSignInAccount"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaa(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    nop

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zab()Ljava/lang/String;

    move-result-object v0

    .line 22
    nop

    .line 23
    const-string v1, "googleSignInAccount"

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zac()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaa(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string p1, "googleSignInOptions"

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zae()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaa(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public final zaf()V
    .locals 2

    .line 54
    const-string v0, "defaultGoogleSignInAccount"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zag(Ljava/lang/String;)V

    .line 56
    nop

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "googleSignInAccount"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zag(Ljava/lang/String;)V

    .line 59
    const-string v0, "googleSignInOptions"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zag(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method
