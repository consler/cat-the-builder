.class public final Lorg/apache/commons/collections4/functors/ExceptionFactory;
.super Ljava/lang/Object;
.source "ExceptionFactory.java"

# interfaces
.implements Lorg/apache/commons/collections4/Factory;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Factory<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/Factory;

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections4/functors/ExceptionFactory;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/ExceptionFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/ExceptionFactory;->INSTANCE:Lorg/apache/commons/collections4/Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionFactory()Lorg/apache/commons/collections4/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionFactory;->INSTANCE:Lorg/apache/commons/collections4/Factory;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionFactory;->INSTANCE:Lorg/apache/commons/collections4/Factory;

    return-object v0
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "ExceptionFactory invoked"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
