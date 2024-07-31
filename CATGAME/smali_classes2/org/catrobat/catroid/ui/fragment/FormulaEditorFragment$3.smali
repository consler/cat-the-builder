.class Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;
.super Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
.source "FormulaEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showComputeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

.field final synthetic val$formulaElement:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

.field final synthetic val$resourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;ILjava/util/List;ILorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    .param p2, "permissionRequestId"    # I
    .param p4, "rationaleString"    # I

    .line 673
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    iput-object p5, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->val$resourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    iput-object p6, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->val$formulaElement:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, p2, p3, p4}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;-><init>(ILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public task()V
    .locals 4

    .line 675
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->val$resourcesSet:Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getInstance(Landroid/content/Context;)Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    move-result-object v0

    .line 677
    .local v0, "sensorHandler":Lorg/catrobat/catroid/formulaeditor/SensorHandler;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->setLocationManager(Landroid/location/LocationManager;)V

    .line 678
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->gpsAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 679
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 680
    .local v1, "checkIntent":Landroid/content/Intent;
    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 682
    return-void

    .line 685
    .end local v0    # "sensorHandler":Lorg/catrobat/catroid/formulaeditor/SensorHandler;
    .end local v1    # "checkIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->val$formulaElement:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 686
    .local v0, "formulaToCompute":Lorg/catrobat/catroid/formulaeditor/Formula;
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 687
    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$900(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)Lorg/catrobat/catroid/content/Scope;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;-><init>(Landroid/content/Context;Lorg/catrobat/catroid/content/Scope;)V

    .line 688
    .local v1, "computeDialog":Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 689
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->show()V

    .line 690
    return-void
.end method
