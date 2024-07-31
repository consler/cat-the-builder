.class public abstract Lcom/huawei/agconnect/AGConnectInstance;
.super Ljava/lang/Object;
.source "AGConnectInstance.java"


# static fields
.field private static INSTANCE:Lcom/huawei/agconnect/AGConnectInstance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/huawei/agconnect/AGConnectInstance;
    .locals 1

    .line 25
    sget-object v0, Lcom/huawei/agconnect/AGConnectInstance;->INSTANCE:Lcom/huawei/agconnect/AGConnectInstance;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    .local v0, "appCtx":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 19
    move-object v0, p0

    .line 21
    :cond_0
    new-instance v1, Lcom/huawei/agconnect/core/impl/AGConnectInstanceImpl;

    invoke-direct {v1, v0}, Lcom/huawei/agconnect/core/impl/AGConnectInstanceImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/agconnect/AGConnectInstance;->INSTANCE:Lcom/huawei/agconnect/AGConnectInstance;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getService(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
