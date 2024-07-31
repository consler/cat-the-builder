.class Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;
.super Ljava/lang/Object;
.source "SSLEngineSNIConfigurator.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineHolder"
.end annotation


# instance fields
.field peerHost:Ljava/lang/reflect/Field;

.field peerPort:Ljava/lang/reflect/Field;

.field skipReflection:Z

.field sslParameters:Ljava/lang/reflect/Field;

.field useSni:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .param p1, "engineClass"    # Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "peerHost"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->peerHost:Ljava/lang/reflect/Field;

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "peerPort"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->peerPort:Ljava/lang/reflect/Field;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 35
    const-string v0, "sslParameters"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->sslParameters:Ljava/lang/reflect/Field;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->sslParameters:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "useSni"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->useSni:Ljava/lang/reflect/Field;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    :goto_0
    return-void
.end method


# virtual methods
.method public configureEngine(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V
    .locals 3
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .line 47
    iget-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->useSni:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->skipReflection:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->peerHost:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->peerPort:Ljava/lang/reflect/Field;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->sslParameters:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "sslp":Ljava/lang/Object;
    iget-object v1, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->useSni:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "sslp":Ljava/lang/Object;
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_1
    :goto_1
    return-void
.end method

.method public createEngine(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
