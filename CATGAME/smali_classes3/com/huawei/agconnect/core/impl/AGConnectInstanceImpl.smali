.class public Lcom/huawei/agconnect/core/impl/AGConnectInstanceImpl;
.super Lcom/huawei/agconnect/AGConnectInstance;
.source "AGConnectInstanceImpl.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceRepository:Lcom/huawei/agconnect/core/impl/ServiceRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Lcom/huawei/agconnect/AGConnectInstance;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/huawei/agconnect/core/impl/AGConnectInstanceImpl;->mContext:Landroid/content/Context;

    .line 17
    new-instance v0, Lcom/huawei/agconnect/core/impl/ServiceRegistrarParser;

    invoke-direct {v0, p1}, Lcom/huawei/agconnect/core/impl/ServiceRegistrarParser;-><init>(Landroid/content/Context;)V

    .line 18
    .local v0, "parser":Lcom/huawei/agconnect/core/impl/ServiceRegistrarParser;
    new-instance v1, Lcom/huawei/agconnect/core/impl/ServiceRepository;

    invoke-virtual {v0}, Lcom/huawei/agconnect/core/impl/ServiceRegistrarParser;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/agconnect/core/impl/ServiceRepository;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/huawei/agconnect/core/impl/AGConnectInstanceImpl;->mServiceRepository:Lcom/huawei/agconnect/core/impl/ServiceRepository;

    .line 19
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/huawei/agconnect/core/impl/AGConnectInstanceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 26
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/huawei/agconnect/core/impl/AGConnectInstanceImpl;->mServiceRepository:Lcom/huawei/agconnect/core/impl/ServiceRepository;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/agconnect/core/impl/ServiceRepository;->getService(Lcom/huawei/agconnect/AGConnectInstance;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
