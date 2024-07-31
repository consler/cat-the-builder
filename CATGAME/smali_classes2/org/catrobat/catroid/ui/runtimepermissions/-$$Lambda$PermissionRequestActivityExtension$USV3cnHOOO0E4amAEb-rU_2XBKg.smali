.class public final synthetic Lorg/catrobat/catroid/ui/runtimepermissions/-$$Lambda$PermissionRequestActivityExtension$USV3cnHOOO0E4amAEb-rU_2XBKg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/runtimepermissions/-$$Lambda$PermissionRequestActivityExtension$USV3cnHOOO0E4amAEb-rU_2XBKg;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/runtimepermissions/-$$Lambda$PermissionRequestActivityExtension$USV3cnHOOO0E4amAEb-rU_2XBKg;->f$1:Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/runtimepermissions/-$$Lambda$PermissionRequestActivityExtension$USV3cnHOOO0E4amAEb-rU_2XBKg;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/runtimepermissions/-$$Lambda$PermissionRequestActivityExtension$USV3cnHOOO0E4amAEb-rU_2XBKg;->f$1:Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;

    invoke-static {v0, v1, p1, p2}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->lambda$showPermissionRationale$1(Landroid/app/Activity;Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;Landroid/content/DialogInterface;I)V

    return-void
.end method
