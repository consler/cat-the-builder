.class public final Lorg/apache/commons/collections/functors/ExceptionClosure;
.super Ljava/lang/Object;
.source "ExceptionClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Closure;

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/apache/commons/collections/functors/ExceptionClosure;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/ExceptionClosure;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/Object;

    .line 65
    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    const-string v1, "ExceptionClosure invoked"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
