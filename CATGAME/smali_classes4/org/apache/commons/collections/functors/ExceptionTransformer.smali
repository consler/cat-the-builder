.class public final Lorg/apache/commons/collections/functors/ExceptionTransformer;
.super Ljava/lang/Object;
.source "ExceptionTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Transformer;

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/apache/commons/collections/functors/ExceptionTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/ExceptionTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/ExceptionTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 66
    new-instance p1, Lorg/apache/commons/collections/FunctorException;

    const-string v0, "ExceptionTransformer invoked"

    invoke-direct {p1, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
