.class Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;
.super Ljava/lang/Object;
.source "SimpleRatingBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->animateRating(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;


# direct methods
.method public constructor <init>(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)V
    .registers 2

    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$700(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 2
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$700(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F
    invoke-static {v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$800(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;->onRatingChanged(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;FZ)V

    :cond_18
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$700(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 2
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$700(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F
    invoke-static {v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$800(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;->onRatingChanged(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;FZ)V

    :cond_18
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$700(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 2
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$700(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F
    invoke-static {v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$800(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;->onRatingChanged(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;FZ)V

    :cond_18
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
