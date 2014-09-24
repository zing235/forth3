#ifndef IMAGEVALUE_H
#define IMAGEVALUE_H
#include <QObject>

class ImageValue : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString BubbleNumber READ getBubbleNumber WRITE setBubbleNumber NOTIFY BubbleNumberChanged)
    Q_PROPERTY(QString BubbleSize READ getBubbleSize WRITE setBubbleSize NOTIFY BubbleSizeChanged)
    Q_PROPERTY(QString GrayMean READ getGrayMean WRITE setGrayMean NOTIFY GrayMeanChanged)
    Q_PROPERTY(int SbGrade READ getSbGrade WRITE setSbGrade NOTIFY SbGradeChanged)
    Q_PROPERTY(QList<int> ZhidaoYaoji READ getZhidaoYaoji WRITE setZhidaoYaoji NOTIFY ZhidaoYaojiChanged)
     Q_PROPERTY(QList<int> YaojiList READ getYaojiList WRITE setYaojiList NOTIFY YaojiListChanged)
public:
    explicit ImageValue(QObject *parent=0);

    QString getBubbleNumber(void) const;
    void setBubbleNumber(const QString BubbleNumber);

    QString getBubbleSize(void) const;
    void setBubbleSize(const QString BubbleSize);

    QString getGrayMean(void) const;
    void setGrayMean(const QString GrayMean);

    int getSbGrade(void) const;
    void setSbGrade(const int SbGrade);

    QList<int> getZhidaoYaoji(void) const;
    void setZhidaoYaoji(const QList<int> ZhidaoYaoji);

    QList<int> getYaojiList(void) const;
    void setYaojiList(const QList<int> YaojiList);

//    Q_INVOKABLE void getImageValue(QUrl url);
    Q_INVOKABLE void getImageValue(void);

signals:
    void BubbleNumberChanged(void);
    void BubbleSizeChanged(void);
    void GrayMeanChanged(void);
    void SbGradeChanged(void);
    void ZhidaoYaojiChanged();
    void YaojiListChanged();


private:
    QString m_BubbleNumber;
    QString m_BubbleSize;
    QString m_GrayMean;
    int m_SbGrade;
    QList<int> m_ZhidaoYaoji;
    QList<int>  m_YaojiList;
};
#endif // IMAGEVALUE_H
