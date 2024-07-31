.class public final Lcom/thoughtworks/xstream/core/ClassLoaderReference;
.super Ljava/lang/Object;
.source "ClassLoaderReference.java"


# instance fields
.field private transient reference:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "reference"    # Ljava/lang/ClassLoader;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->setReference(Ljava/lang/ClassLoader;)V

    .line 28
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 41
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    .line 42
    return-object p0
.end method


# virtual methods
.method public getReference()Ljava/lang/ClassLoader;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public setReference(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "reference"    # Ljava/lang/ClassLoader;

    .line 35
    instance-of v0, p1, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;

    .line 37
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    .line 38
    return-void
.end method
