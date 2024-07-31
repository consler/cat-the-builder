.class public final Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;
.super Ljava/lang/Object;
.source "TrustedWebActivityServiceConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TWAConnectionPool"


# instance fields
.field private final mConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Landroidx/browser/trusted/ConnectionHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mConnections:Ljava/util/Map;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    new-instance v0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;

    invoke-direct {v0, p0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private createServiceIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;Z)Landroid/content/Intent;
    .locals 10
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "scope"    # Landroid/net/Uri;
    .param p4, "shouldLog"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/browser/trusted/Token;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 208
    .local p3, "possiblePackages":Ljava/util/Set;, "Ljava/util/Set<Landroidx/browser/trusted/Token;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 213
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v1, "scopeResolutionIntent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 217
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 220
    .local v2, "candidateActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 221
    .local v3, "resolvedPackage":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 222
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 224
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/browser/trusted/Token;

    .line 225
    .local v8, "possiblePackage":Landroidx/browser/trusted/Token;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroidx/browser/trusted/Token;->matches(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 226
    move-object v3, v6

    .line 227
    goto :goto_2

    .line 229
    .end local v8    # "possiblePackage":Landroidx/browser/trusted/Token;
    :cond_1
    goto :goto_1

    .line 230
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_0

    .line 232
    :cond_3
    const-string v4, "TWAConnectionPool"

    if-nez v3, :cond_5

    .line 233
    if-eqz p4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No TWA candidates for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " have been registered."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_4
    return-object v0

    .line 238
    :cond_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v5, "serviceResolutionIntent":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v6, "android.support.customtabs.trusted.TRUSTED_WEB_ACTIVITY_SERVICE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x20000

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 245
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_7

    .line 246
    if-eqz p4, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find TWAService for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_6
    return-object v0

    .line 250
    :cond_7
    if-eqz p4, :cond_8

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to handle request for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v0, "finalIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 255
    return-object v0

    .line 209
    .end local v0    # "finalIntent":Landroid/content/Intent;
    .end local v1    # "scopeResolutionIntent":Landroid/content/Intent;
    .end local v2    # "candidateActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "resolvedPackage":Ljava/lang/String;
    .end local v5    # "serviceResolutionIntent":Landroid/content/Intent;
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    :cond_9
    :goto_3
    return-object v0
.end method


# virtual methods
.method public connect(Landroid/net/Uri;Ljava/util/Set;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "scope"    # Landroid/net/Uri;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/browser/trusted/Token;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/browser/trusted/TrustedWebActivityServiceConnection;",
            ">;"
        }
    .end annotation

    .line 108
    .local p2, "possiblePackages":Ljava/util/Set;, "Ljava/util/Set<Landroidx/browser/trusted/Token;>;"
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/browser/trusted/ConnectionHolder;

    .line 109
    .local v0, "connection":Landroidx/browser/trusted/ConnectionHolder;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroidx/browser/trusted/ConnectionHolder;->getServiceWrapper()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 114
    :cond_0
    iget-object v1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    .line 115
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->createServiceIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;Z)Landroid/content/Intent;

    move-result-object v1

    .line 116
    .local v1, "bindServiceIntent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No service exists for scope"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/browser/trusted/FutureUtils;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2

    .line 121
    :cond_1
    new-instance v2, Landroidx/browser/trusted/ConnectionHolder;

    new-instance v3, Landroidx/browser/trusted/-$$Lambda$TrustedWebActivityServiceConnectionPool$0rIunx8HODWjNmKa0LJLcrkAQfY;

    invoke-direct {v3, p0, p1}, Landroidx/browser/trusted/-$$Lambda$TrustedWebActivityServiceConnectionPool$0rIunx8HODWjNmKa0LJLcrkAQfY;-><init>(Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;Landroid/net/Uri;)V

    invoke-direct {v2, v3}, Landroidx/browser/trusted/ConnectionHolder;-><init>(Ljava/lang/Runnable;)V

    .line 122
    .local v2, "newConnection":Landroidx/browser/trusted/ConnectionHolder;
    iget-object v3, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mConnections:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v3, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;

    iget-object v4, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1, v2}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroidx/browser/trusted/ConnectionHolder;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 126
    invoke-virtual {v3, p3, v4}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    invoke-virtual {v2}, Landroidx/browser/trusted/ConnectionHolder;->getServiceWrapper()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    return-object v3
.end method

.method public synthetic lambda$connect$0$TrustedWebActivityServiceConnectionPool(Landroid/net/Uri;)V
    .locals 1
    .param p1, "scope"    # Landroid/net/Uri;

    .line 121
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/browser/trusted/ConnectionHolder;

    return-void
.end method

.method public serviceExistsForScope(Landroid/net/Uri;Ljava/util/Set;)Z
    .locals 3
    .param p1, "scope"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/browser/trusted/Token;",
            ">;)Z"
        }
    .end annotation

    .line 186
    .local p2, "possiblePackages":Ljava/util/Set;, "Ljava/util/Set<Landroidx/browser/trusted/Token;>;"
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 188
    :cond_0
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, p2, v2}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->createServiceIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method unbindAllConnections()V
    .locals 3

    .line 195
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/browser/trusted/ConnectionHolder;

    .line 196
    .local v1, "connection":Landroidx/browser/trusted/ConnectionHolder;
    iget-object v2, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 197
    .end local v1    # "connection":Landroidx/browser/trusted/ConnectionHolder;
    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->mConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    return-void
.end method
