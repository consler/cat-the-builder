.class final Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker$doWork$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "FeaturedProjectSyncWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0096@"
    }
    d2 = {
        "doWork",
        "",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "Landroidx/work/ListenableWorker$Result;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.catrobat.catroid.sync.FeaturedProjectSyncWorker"
    f = "FeaturedProjectSyncWorker.kt"
    i = {}
    l = {
        0x29
    }
    m = "doWork"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker$doWork$1;->this$0:Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker$doWork$1;->result:Ljava/lang/Object;

    iget v0, p0, Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker$doWork$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker$doWork$1;->label:I

    iget-object v0, p0, Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker$doWork$1;->this$0:Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
