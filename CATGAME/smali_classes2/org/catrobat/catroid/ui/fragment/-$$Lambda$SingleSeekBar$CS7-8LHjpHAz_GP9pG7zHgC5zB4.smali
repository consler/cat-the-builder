.class public final synthetic Lorg/catrobat/catroid/ui/fragment/-$$Lambda$SingleSeekBar$CS7-8LHjpHAz_GP9pG7zHgC5zB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$SingleSeekBar$CS7-8LHjpHAz_GP9pG7zHgC5zB4;->f$0:Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$SingleSeekBar$CS7-8LHjpHAz_GP9pG7zHgC5zB4;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$SingleSeekBar$CS7-8LHjpHAz_GP9pG7zHgC5zB4;->f$0:Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$SingleSeekBar$CS7-8LHjpHAz_GP9pG7zHgC5zB4;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->lambda$getView$0$SingleSeekBar(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
