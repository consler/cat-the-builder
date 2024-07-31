.class public final Lorg/apache/commons/collections4/functors/ExceptionClosure;
.super Ljava/lang/Object;
.source "ExceptionClosure.java"

# interfaces
.implements Lorg/apache/commons/collections4/Closure;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Closure<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/Closure;

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections4/functors/ExceptionClosure;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/ExceptionClosure;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections4/Closure;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    .local p0, "this":Lorg/apache/commons/collections4/functors/ExceptionClosure;, "Lorg/apache/commons/collections4/functors/ExceptionClosure<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static exceptionClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/functors/ExceptionClosure;, "Lorg/apache/commons/collections4/functors/ExceptionClosure<TE;>;"
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/functors/ExceptionClosure;, "Lorg/apache/commons/collections4/functors/ExceptionClosure<TE;>;"
    .local p1, "input":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "ExceptionClosure invoked"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
