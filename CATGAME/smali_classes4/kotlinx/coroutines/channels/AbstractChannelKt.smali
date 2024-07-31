.class public final Lkotlinx/coroutines/channels/AbstractChannelKt;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannelKt\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ValueOrClosed$Companion\n*L\n1#1,1130:1\n420#2:1131\n416#2:1132\n420#2:1133\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannelKt\n*L\n1126#1:1131\n1126#1:1132\n1129#1:1133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0000\u001a#\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u0013\"\u0004\u0008\u0000\u0010\u0014*\u0004\u0018\u00010\u0015H\u0082\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001a%\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u0013\"\u0004\u0008\u0000\u0010\u0014*\u0006\u0012\u0002\u0008\u00030\u0017H\u0082\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0003\"\u0016\u0010\u0008\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\t\u0010\u0003\"\u0016\u0010\n\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000b\u0010\u0003\"\u0016\u0010\u000c\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\r\u0010\u0003\"\u000e\u0010\u000e\u001a\u00020\u000fX\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u000fX\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u000fX\u0080T\u00a2\u0006\u0002\n\u0000*(\u0008\u0000\u0010\u0019\"\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u001c0\u001a\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "EMPTY",
        "Lkotlinx/coroutines/internal/Symbol;",
        "getEMPTY$annotations",
        "()V",
        "ENQUEUE_FAILED",
        "getENQUEUE_FAILED$annotations",
        "HANDLER_INVOKED",
        "getHANDLER_INVOKED$annotations",
        "OFFER_FAILED",
        "getOFFER_FAILED$annotations",
        "OFFER_SUCCESS",
        "getOFFER_SUCCESS$annotations",
        "POLL_FAILED",
        "getPOLL_FAILED$annotations",
        "RECEIVE_NULL_ON_CLOSE",
        "",
        "RECEIVE_RESULT",
        "RECEIVE_THROWS_ON_CLOSE",
        "toResult",
        "Lkotlinx/coroutines/channels/ValueOrClosed;",
        "E",
        "",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/Closed;",
        "(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Object;",
        "Handler",
        "Lkotlin/Function1;",
        "",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final EMPTY:Lkotlinx/coroutines/internal/Symbol;

.field public static final ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

.field public static final HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

.field public static final OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

.field public static final OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

.field public static final POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

.field public static final RECEIVE_NULL_ON_CLOSE:I = 0x1

.field public static final RECEIVE_RESULT:I = 0x2

.field public static final RECEIVE_THROWS_ON_CLOSE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1010
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 1014
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "OFFER_SUCCESS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    .line 1018
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "OFFER_FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 1022
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "POLL_FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 1026
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "ENQUEUE_FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 1030
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "ON_CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final synthetic access$toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$access_u24toResult"    # Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/channels/AbstractChannelKt;->toResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$toResult(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$access_u24toResult"    # Lkotlinx/coroutines/channels/Closed;

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/channels/AbstractChannelKt;->toResult(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getEMPTY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getENQUEUE_FAILED$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHANDLER_INVOKED$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOFFER_FAILED$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOFFER_SUCCESS$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPOLL_FAILED$annotations()V
    .locals 0

    return-void
.end method

.method private static final toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$toResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1126
    .local v0, "$i$f$toResult":I
    instance-of v1, p0, Lkotlinx/coroutines/channels/Closed;

    if-eqz v1, :cond_0

    sget-object v1, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/channels/Closed;

    iget-object v2, v2, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .local v2, "cause$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1131
    .local v3, "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    new-instance v4, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "this_$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    goto :goto_0

    .line 1126
    :cond_0
    sget-object v1, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    .restart local v1    # "this_$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    move-object v2, p0

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1132
    .local v3, "$i$f$value-ZYPwvRU$kotlinx_coroutines_core":I
    invoke-static {v2}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 1126
    .end local v1    # "this_$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$value-ZYPwvRU$kotlinx_coroutines_core":I
    :goto_0
    return-object v1
.end method

.method private static final toResult(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$toResult"    # Lkotlinx/coroutines/channels/Closed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1129
    .local v0, "$i$f$toResult":I
    sget-object v1, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    iget-object v2, p0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .local v2, "cause$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1133
    .local v3, "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    new-instance v4, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1129
    .end local v1    # "this_$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    return-object v1
.end method
