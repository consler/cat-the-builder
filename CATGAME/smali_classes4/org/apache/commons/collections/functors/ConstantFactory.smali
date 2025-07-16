.class public Lorg/apache/commons/collections/functors/ConstantFactory;
.super Ljava/lang/Object;
.source "ConstantFactory.java"

# interfaces
.implements Lorg/apache/commons/collections/Factory;
.implements Ljava/io/Serializable;


# static fields
.field public static final NULL_INSTANCE:Lorg/apache/commons/collections/Factory;

.field private static final serialVersionUID:J = -0x30dbf54892a4d5f8L


# instance fields
.field private final iConstant:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lorg/apache/commons/collections/functors/ConstantFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/functors/ConstantFactory;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/collections/functors/ConstantFactory;->NULL_INSTANCE:Lorg/apache/commons/collections/Factory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ConstantFactory;->iConstant:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .locals 1

    if-nez p0, :cond_0

    .line 54
    sget-object p0, Lorg/apache/commons/collections/functors/ConstantFactory;->NULL_INSTANCE:Lorg/apache/commons/collections/Factory;

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/ConstantFactory;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ConstantFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ConstantFactory;->iConstant:Ljava/lang/Object;

    return-object v0
.end method

.method public getConstant()Ljava/lang/Object;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ConstantFactory;->iConstant:Ljava/lang/Object;

    return-object v0
.end method
