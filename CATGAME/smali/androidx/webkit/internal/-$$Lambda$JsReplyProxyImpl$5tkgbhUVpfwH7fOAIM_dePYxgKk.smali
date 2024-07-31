.class public final synthetic Landroidx/webkit/internal/-$$Lambda$JsReplyProxyImpl$5tkgbhUVpfwH7fOAIM_dePYxgKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/-$$Lambda$JsReplyProxyImpl$5tkgbhUVpfwH7fOAIM_dePYxgKk;->f$0:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/webkit/internal/-$$Lambda$JsReplyProxyImpl$5tkgbhUVpfwH7fOAIM_dePYxgKk;->f$0:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    invoke-static {v0}, Landroidx/webkit/internal/JsReplyProxyImpl;->lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
