.class Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->onInfo(D[Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

.field final synthetic val$jobs:[Lorg/catrobat/catroid/scratchconverter/protocol/Job;

.field final synthetic val$supportedCatrobatLanguageVersion:D


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;D[Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 269
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    iput-wide p2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;->val$supportedCatrobatLanguageVersion:D

    iput-object p4, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;->val$jobs:[Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 272
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Catrobat Language version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;->val$supportedCatrobatLanguageVersion:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$400(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;

    .line 275
    .local v1, "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;->val$jobs:[Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;->onJobsInfo([Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    .line 276
    .end local v1    # "viewListener":Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;
    goto :goto_0

    .line 278
    :cond_0
    const-wide v0, 0x3ff1c28f5c28f5c3L    # 1.11

    iget-wide v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;->val$supportedCatrobatLanguageVersion:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 279
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;->this$0:Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-static {v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->access$200(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const v1, 0x7f1207d1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 281
    const v1, 0x7f120306

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 282
    const v1, 0x7f1201f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 284
    .local v1, "errorDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 286
    .end local v0    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v1    # "errorDialog":Landroid/app/Dialog;
    :cond_1
    return-void
.end method
