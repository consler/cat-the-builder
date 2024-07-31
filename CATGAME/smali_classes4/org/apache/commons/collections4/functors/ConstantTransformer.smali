.class public Lorg/apache/commons/collections4/functors/ConstantTransformer;
.super Ljava/lang/Object;
.source "ConstantTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TI;TO;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final NULL_INSTANCE:Lorg/apache/commons/collections4/Transformer;

.field private static final serialVersionUID:J = 0x587690114102b194L


# instance fields
.field private final iConstant:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lorg/apache/commons/collections4/functors/ConstantTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/functors/ConstantTransformer;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/functors/ConstantTransformer;, "Lorg/apache/commons/collections4/functors/ConstantTransformer<TI;TO;>;"
    .local p1, "constantToReturn":Ljava/lang/Object;, "TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->iConstant:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public static constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(TO;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 65
    .local p0, "constantToReturn":Ljava/lang/Object;, "TO;"
    if-nez p0, :cond_0

    .line 66
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/ConstantTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static nullTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 108
    .local p0, "this":Lorg/apache/commons/collections4/functors/ConstantTransformer;, "Lorg/apache/commons/collections4/functors/ConstantTransformer<TI;TO;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/functors/ConstantTransformer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 112
    return v2

    .line 114
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections4/functors/ConstantTransformer;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "otherConstant":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public getConstant()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/commons/collections4/functors/ConstantTransformer;, "Lorg/apache/commons/collections4/functors/ConstantTransformer<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->iConstant:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/functors/ConstantTransformer;, "Lorg/apache/commons/collections4/functors/ConstantTransformer<TI;TO;>;"
    const-string v0, "ConstantTransformer"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 124
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 127
    :cond_0
    return v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/functors/ConstantTransformer;, "Lorg/apache/commons/collections4/functors/ConstantTransformer<TI;TO;>;"
    .local p1, "input":Ljava/lang/Object;, "TI;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->iConstant:Ljava/lang/Object;

    return-object v0
.end method
