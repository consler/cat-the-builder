.class Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;
.super Ljava/lang/Object;
.source "FormulaEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private deleteAction:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 309
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;

    .line 309
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleLongClick(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 316
    return v1

    .line 318
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->deleteAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->handler:Landroid/os/Handler;

    .line 321
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 322
    new-instance v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1$1;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1$1;-><init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;Landroid/view/View;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->deleteAction:Ljava/lang/Runnable;

    .line 332
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 333
    return v1

    .line 335
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->handler:Landroid/os/Handler;

    .line 336
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->deleteAction:Ljava/lang/Runnable;

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    :cond_3
    return v1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 343
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 344
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateButtonsOnKeyboardAndInvalidateOptionsMenu()V

    .line 345
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 346
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->handleLongClick(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 347
    return v2

    .line 350
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 352
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    .line 394
    :pswitch_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$100(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->handleKeyEvent(ILjava/lang/String;)V

    .line 395
    return v2

    .line 381
    :pswitch_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$500(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$600(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$700(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    .line 386
    :goto_0
    return v2

    .line 371
    :pswitch_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    const v1, 0x7f120353

    const-string v3, "sensorFragment"

    invoke-static {v0, v3, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$300(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;Ljava/lang/String;I)V

    .line 373
    return v2

    .line 367
    :pswitch_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    const v1, 0x7f12034e

    const-string v3, "objectFragment"

    invoke-static {v0, v3, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$300(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;Ljava/lang/String;I)V

    .line 369
    return v2

    .line 363
    :pswitch_4
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    const v1, 0x7f1203ea

    const-string v3, "logicFragment"

    invoke-static {v0, v3, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$300(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;Ljava/lang/String;I)V

    .line 365
    return v2

    .line 378
    :pswitch_5
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->toggleFunctionalButtons()V

    .line 379
    return v2

    .line 359
    :pswitch_6
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    const v1, 0x7f1203cf

    const-string v3, "functionFragment"

    invoke-static {v0, v3, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$300(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;Ljava/lang/String;I)V

    .line 361
    return v2

    .line 388
    :pswitch_7
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$100(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->handleKeyEvent(ILjava/lang/String;)V

    .line 389
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->handleLongClick(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 375
    :pswitch_8
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$400(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    .line 376
    return v2

    .line 356
    :pswitch_9
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$200(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    .line 357
    return v2

    .line 391
    :pswitch_a
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$800(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;Landroid/view/View;)V

    .line 392
    return v2

    .line 398
    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a03a3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
