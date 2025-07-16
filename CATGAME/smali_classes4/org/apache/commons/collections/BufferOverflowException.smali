.class public Lorg/apache/commons/collections/BufferOverflowException;
.super Ljava/lang/RuntimeException;
.source "BufferOverflowException.java"


# instance fields
.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/commons/collections/BufferOverflowException;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lorg/apache/commons/collections/BufferOverflowException;->throwable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/collections/BufferOverflowException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
