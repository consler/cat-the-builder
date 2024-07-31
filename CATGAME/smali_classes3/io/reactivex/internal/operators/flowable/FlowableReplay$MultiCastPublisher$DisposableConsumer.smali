.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DisposableConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field private final srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscribers/SubscriberResourceWrapper<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher;Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/SubscriberResourceWrapper<",
            "TR;>;)V"
        }
    .end annotation

    .line 1142
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher<TR;TU;>.DisposableConsumer;"
    .local p2, "srw":Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;, "Lio/reactivex/internal/subscribers/SubscriberResourceWrapper<TR;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;->this$0:Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1143
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;->srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    .line 1144
    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "r"    # Lio/reactivex/disposables/Disposable;

    .line 1148
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher<TR;TU;>.DisposableConsumer;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;->srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 1149
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1139
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher<TR;TU;>.DisposableConsumer;"
    move-object v0, p1

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
