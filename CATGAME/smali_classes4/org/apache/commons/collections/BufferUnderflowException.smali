.class public Lorg/apache/commons/collections/BufferUnderflowException;
.super Ljava/util/NoSuchElementException;
.source "BufferUnderflowException.java"


# instance fields
.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/BufferUnderflowException;->throwable:Ljava/lang/Throwable;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 64
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 65
    iput-object p2, p0, Lorg/apache/commons/collections/BufferUnderflowException;->throwable:Ljava/lang/Throwable;

    .line 66
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections/BufferUnderflowException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
