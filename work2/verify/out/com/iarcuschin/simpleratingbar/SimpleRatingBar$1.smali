.class Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$1;
.super Ljava/lang/Object;
.source "SimpleRatingBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$1;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$1;->this$0:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    invoke-virtual {v0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setRating(F)V

    return-void
.end method
