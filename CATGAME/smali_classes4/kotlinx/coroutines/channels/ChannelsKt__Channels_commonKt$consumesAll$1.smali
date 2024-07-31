.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumesAll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Channels.common.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt;->consumesAll([Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumesAll$1\n+ 2 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2191:1\n75#2:2192\n1#3:2193\n*E\n*S KotlinDebug\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumesAll$1\n*L\n141#1:2192\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "cause",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $channels:[Lkotlinx/coroutines/channels/ReceiveChannel;


# direct methods
.method constructor <init>([Lkotlinx/coroutines/channels/ReceiveChannel;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumesAll$1;->$channels:[Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumesAll$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 133
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    .line 134
    .local v0, "exception":Ljava/lang/Throwable;
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumesAll$1;->$channels:[Lkotlinx/coroutines/channels/ReceiveChannel;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 135
    .local v4, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 136
    :try_start_0
    invoke-static {v4, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v5

    .line 138
    .local v5, "e":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 139
    move-object v0, v5

    goto :goto_1

    .line 141
    :cond_0
    move-object v6, v0

    .local v6, "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 2192
    .local v7, "$i$f$addSuppressedThrowable":I
    invoke-static {v6, v5}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 142
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v6    # "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    .end local v7    # "$i$f$addSuppressedThrowable":I
    :goto_1
    nop

    .line 143
    nop

    .line 134
    nop

    .end local v4    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_1
    if-nez v0, :cond_2

    .line 145
    .end local v0    # "exception":Ljava/lang/Throwable;
    return-void

    .line 144
    .restart local v0    # "exception":Ljava/lang/Throwable;
    :cond_2
    move-object v1, v0

    .line 2193
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 144
    .local v2, "$i$a$-let-ChannelsKt__Channels_commonKt$consumesAll$1$1":I
    throw v1
.end method
