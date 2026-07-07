.class public final Lcom/magoware/magoware/webtv/mobile_homepage/utils/DimensUtil;
.super Ljava/lang/Object;
.source "DimensUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/utils/DimensUtil;",
        "",
        "()V",
        "homeFeedSquareParams",
        "Landroid/widget/LinearLayout$LayoutParams;",
        "context",
        "Landroid/content/Context;",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/utils/DimensUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DimensUtil;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DimensUtil;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DimensUtil;->INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/utils/DimensUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final homeFeedSquareParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07015c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 11
    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
