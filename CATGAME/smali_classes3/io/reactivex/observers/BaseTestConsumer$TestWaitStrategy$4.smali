.class final enum Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$4;
.super Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
.source "BaseTestConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;-><init>(Ljava/lang/String;ILio/reactivex/observers/BaseTestConsumer$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 827
    const/16 v0, 0xa

    invoke-static {v0}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$4;->sleep(I)V

    .line 828
    return-void
.end method
