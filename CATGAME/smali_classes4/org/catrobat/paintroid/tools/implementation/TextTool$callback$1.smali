.class public final Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;
.super Ljava/lang/Object;
.source "TextTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/TextToolOptionsView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/TextTool;-><init>(Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "org/catrobat/paintroid/tools/implementation/TextTool$callback$1",
        "Lorg/catrobat/paintroid/tools/options/TextToolOptionsView$Callback;",
        "hideToolOptions",
        "",
        "setBold",
        "bold",
        "",
        "setFont",
        "fontType",
        "Lorg/catrobat/paintroid/tools/FontType;",
        "setItalic",
        "italic",
        "setText",
        "text",
        "",
        "setTextSize",
        "size",
        "",
        "setUnderlined",
        "underlined",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $workspace:Lorg/catrobat/paintroid/tools/Workspace;

.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/TextTool;Lorg/catrobat/paintroid/tools/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/tools/implementation/TextTool;
    .param p2, "$captured_local_variable$1"    # Lorg/catrobat/paintroid/tools/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/tools/Workspace;",
            ")V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideToolOptions()V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-object v0, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->hide()V

    .line 165
    return-void
.end method

.method public setBold(Z)V
    .locals 2
    .param p1, "bold"    # Z

    .line 150
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-boolean p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    .line 151
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-object v0, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-boolean v1, v1, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 152
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 153
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 154
    return-void
.end method

.method public setFont(Lorg/catrobat/paintroid/tools/FontType;)V
    .locals 1
    .param p1, "fontType"    # Lorg/catrobat/paintroid/tools/FontType;

    const-string v0, "fontType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-object p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    .line 130
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$updateTypeface(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 131
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 132
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 133
    return-void
.end method

.method public setItalic(Z)V
    .locals 1
    .param p1, "italic"    # Z

    .line 143
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-boolean p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    .line 144
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$updateTypeface(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 146
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 147
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-object p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->text:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 125
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 126
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .line 157
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$setTextSize$p(Lorg/catrobat/paintroid/tools/implementation/TextTool;I)V

    .line 158
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-object v0, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$getTextSize$p(Lorg/catrobat/paintroid/tools/implementation/TextTool;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 159
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 160
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 161
    return-void
.end method

.method public setUnderlined(Z)V
    .locals 2
    .param p1, "underlined"    # Z

    .line 136
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-boolean p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    .line 137
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-object v0, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-boolean v1, v1, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 138
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 139
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 140
    return-void
.end method
