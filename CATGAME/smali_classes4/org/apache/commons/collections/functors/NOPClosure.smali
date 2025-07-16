.class public Lorg/apache/commons/collections/functors/NOPClosure;
.super Ljava/lang/Object;
.source "NOPClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Closure;

.field private static final serialVersionUID:J = 0x30d42478696adb72L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/commons/collections/functors/NOPClosure;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/NOPClosure;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 46
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
