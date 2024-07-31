.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->onJobOutput(Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

.field final synthetic val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

.field final synthetic val$lines:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 444
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;->val$lines:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 447
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$500(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;J)[Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 448
    .local v3, "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    iget-object v4, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;->val$job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    iget-object v5, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;->val$lines:[Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;->onJobOutput(Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V

    .line 447
    .end local v3    # "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_0
    return-void
.end method
