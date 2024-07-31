.class public Lcom/huawei/agconnect/core/Service$Builder;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/agconnect/core/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field mInterface:Ljava/lang/Class;
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 46
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-eqz p1, :cond_2

    .line 51
    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/huawei/agconnect/core/Service$Builder;->mInterface:Ljava/lang/Class;

    .line 60
    iput-object p2, p0, Lcom/huawei/agconnect/core/Service$Builder;->mClass:Ljava/lang/Class;

    .line 61
    const-class v0, Lcom/huawei/agconnect/annotation/Singleton;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/agconnect/core/Service$Builder;->mIsSingleton:Z

    .line 62
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the clazz parameter must be interface type and public"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the clazz parameter cannot be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the interface parameter cannot be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/huawei/agconnect/core/Service$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lcom/huawei/agconnect/core/Service$1;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/huawei/agconnect/core/Service$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/huawei/agconnect/core/Service;
    .locals 4

    .line 70
    new-instance v0, Lcom/huawei/agconnect/core/Service;

    iget-object v1, p0, Lcom/huawei/agconnect/core/Service$Builder;->mInterface:Ljava/lang/Class;

    iget-object v2, p0, Lcom/huawei/agconnect/core/Service$Builder;->mClass:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/agconnect/core/Service;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/huawei/agconnect/core/Service$1;)V

    .line 71
    .local v0, "service":Lcom/huawei/agconnect/core/Service;
    iget-boolean v1, p0, Lcom/huawei/agconnect/core/Service$Builder;->mIsSingleton:Z

    invoke-static {v0, v1}, Lcom/huawei/agconnect/core/Service;->access$202(Lcom/huawei/agconnect/core/Service;Z)Z

    .line 72
    return-object v0
.end method

.method public isSingleton(Z)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 0
    .param p1, "isSingleton"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/huawei/agconnect/core/Service$Builder;->mIsSingleton:Z

    .line 66
    return-object p0
.end method
