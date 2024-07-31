.class public Lcom/badlogic/gdx/backends/android/AndroidInputFactory;
.super Ljava/lang/Object;
.source "AndroidInputFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAndroidInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 10
    .param p0, "activity"    # Lcom/badlogic/gdx/Application;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 34
    .local v1, "input":Lcom/badlogic/gdx/backends/android/AndroidInput;
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .local v2, "sdkVersion":I
    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 36
    const-string v3, "com.badlogic.gdx.backends.android.AndroidInputThreePlus"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 38
    :cond_0
    const-string v3, "com.badlogic.gdx.backends.android.AndroidInput"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 40
    :goto_0
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/badlogic/gdx/Application;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/Object;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 42
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    aput-object p3, v3, v9

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/backends/android/AndroidInput;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 43
    return-object v1

    .line 44
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "input":Lcom/badlogic/gdx/backends/android/AndroidInput;
    .end local v2    # "sdkVersion":I
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t construct AndroidInput, this should never happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
