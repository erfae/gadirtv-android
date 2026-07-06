.class public final synthetic Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    check-cast p2, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->$r8$lambda$PID6wcJZ_0iQR0TUk7wendeqYKg(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;)I

    move-result p1

    return p1

    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    check-cast p2, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->$r8$lambda$wdhPY3eswLvZmYgaJLTPStB2Qzs(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
