.class public final synthetic Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;->INSTANCE:Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;

    new-instance v0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;->INSTANCE$1:Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer;->$r8$lambda$cs9npxBvv_qtzxpDgSnPy7MmurY(Ljava/lang/String;)V

    return-void

    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer;->$r8$lambda$NofwxHOZrEEV1MRTpUn9ROuxIY8(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
