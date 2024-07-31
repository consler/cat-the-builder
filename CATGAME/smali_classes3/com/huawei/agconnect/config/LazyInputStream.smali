.class public abstract Lcom/huawei/agconnect/config/LazyInputStream;
.super Ljava/lang/Object;
.source "LazyInputStream.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInput:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/huawei/agconnect/config/LazyInputStream;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/huawei/agconnect/config/LazyInputStream;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/huawei/agconnect/config/impl/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    return-void
.end method

.method public abstract get(Landroid/content/Context;)Ljava/io/InputStream;
.end method

.method public loadInputStream()Ljava/io/InputStream;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/huawei/agconnect/config/LazyInputStream;->mInput:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/huawei/agconnect/config/LazyInputStream;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/huawei/agconnect/config/LazyInputStream;->get(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/agconnect/config/LazyInputStream;->mInput:Ljava/io/InputStream;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/huawei/agconnect/config/LazyInputStream;->mInput:Ljava/io/InputStream;

    return-object v0
.end method
