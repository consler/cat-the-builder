.class final Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$2;
.super Ljava/lang/Object;
.source "AdvancedSettingsDialog.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$2;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$2;-><init>()V

    sput-object v0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$2;->INSTANCE:Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "$noName_0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 32
    sput-boolean p2, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    .line 33
    return-void
.end method
