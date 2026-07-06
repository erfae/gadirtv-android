.class public Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;
.super Ljava/lang/Object;
.source "SimpleRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationBuilder"
.end annotation


# instance fields
.field private animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private duration:J

.field private interpolator:Landroid/view/animation/Interpolator;

.field private ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

.field private ratingTarget:F

.field private repeatCount:I

.field private repeatMode:I


# direct methods
.method private constructor <init>(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    const-wide/16 v0, 0x7d0

    .line 4
    iput-wide v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->duration:J

    .line 5
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->interpolator:Landroid/view/animation/Interpolator;

    .line 6
    invoke-virtual {p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->getNumberOfStars()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->ratingTarget:F

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->repeatCount:I

    const/4 p1, 0x2

    .line 8
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->repeatMode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;-><init>(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)F
    .locals 0

    iget p0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->ratingTarget:F

    return p0
.end method

.method public static synthetic access$102(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;F)F
    .locals 0

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->ratingTarget:F

    return p1
.end method

.method public static synthetic access$200(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->duration:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)I
    .locals 0

    iget p0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->repeatCount:I

    return p0
.end method

.method public static synthetic access$400(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)I
    .locals 0

    iget p0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->repeatMode:I

    return p0
.end method

.method public static synthetic access$500(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method


# virtual methods
.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setDuration(J)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->duration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setRatingTarget(F)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;
    .locals 0

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->ratingTarget:F

    return-object p0
.end method

.method public setRepeatCount(I)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;
    .locals 0

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->repeatCount:I

    return-object p0
.end method

.method public setRepeatMode(I)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;
    .locals 0

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->repeatMode:I

    return-object p0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    invoke-static {v0, p0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->access$1000(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)V

    return-void
.end method
