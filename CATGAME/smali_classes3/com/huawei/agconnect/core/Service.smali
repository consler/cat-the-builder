.class public Lcom/huawei/agconnect/core/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/agconnect/core/Service$Builder;
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mIsSingleton:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 16
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/huawei/agconnect/core/Service;->mInterface:Ljava/lang/Class;

    .line 18
    iput-object p2, p0, Lcom/huawei/agconnect/core/Service;->mClass:Ljava/lang/Class;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/huawei/agconnect/core/Service$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lcom/huawei/agconnect/core/Service$1;

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/huawei/agconnect/core/Service;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$202(Lcom/huawei/agconnect/core/Service;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/agconnect/core/Service;
    .param p1, "x1"    # Z

    .line 11
    iput-boolean p1, p0, Lcom/huawei/agconnect/core/Service;->mIsSingleton:Z

    return p1
.end method

.method public static builder(Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/huawei/agconnect/core/Service$Builder;"
        }
    .end annotation

    .line 38
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/huawei/agconnect/core/Service$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/huawei/agconnect/core/Service$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/huawei/agconnect/core/Service$1;)V

    return-object v0
.end method

.method public static builder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/huawei/agconnect/core/Service$Builder;"
        }
    .end annotation

    .line 34
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/huawei/agconnect/core/Service$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/huawei/agconnect/core/Service$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/huawei/agconnect/core/Service$1;)V

    return-object v0
.end method


# virtual methods
.method public getInterface()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/huawei/agconnect/core/Service;->mInterface:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/huawei/agconnect/core/Service;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isSingleton()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/huawei/agconnect/core/Service;->mIsSingleton:Z

    return v0
.end method
